package com.robocon321.demo.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PostLoad;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.SQLDelete;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.robocon321.demo.type.VisibleType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "`category`")
@SQLDelete(sql = "UPDATE category SET status = 0 WHERE id = ?")
@EntityListeners(AuditingEntityListener.class)
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false, length = 100, unique = true)
	private String name;
	
	@Column(nullable = true, length = 2048)
	private String image;
	
	private String description;
	
	@Column(nullable = false, length = 100, unique = true)
	private String slug;

	@Column(length = 100)
	private String metaTitle;
	
	@Column(length = 300)
	private String metaKeyword;

	@Column(length = 500)
	private String metaDescription;

	@Column(nullable = false)
	private Integer status;

	@Transient
	private VisibleType visibleType;
	
    @PostLoad
    void fillTransient() {
        if (status >= 0) {
            this.visibleType = VisibleType.of(status);
        }
    }

    @PrePersist
    @PreUpdate
    void fillPersistent() {
        if (visibleType != null) {
            this.status = visibleType.getVisible();
        }
    }
	
	@CreatedDate
	@Column(nullable = false)
	private Timestamp createTime;

	@LastModifiedDate
	@Column(nullable = false)
	private Timestamp modTime;
	
	@Formula("(select count(*) from category_product where category_product.category_id = id)")
	private Integer totalProduct;
	
	@ManyToOne(targetEntity = Category.class)
	@JoinColumn(name = "parent_id")
	private Category parent;
	
	@OneToMany(mappedBy = "parent", targetEntity = Category.class)
	private List<Category> childs = new ArrayList<>();
	
	@ManyToMany(mappedBy = "categories", targetEntity = Product.class)
	private List<Product> products = new ArrayList<>();
}

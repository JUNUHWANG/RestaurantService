package com.encore.demo.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Transient;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class OwnerBoard {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int num;
	
	@ManyToOne
	@JoinColumn(name="writer", nullable=false)
	@OnDelete(action= OnDeleteAction.CASCADE) // on delete cascade �꽕�젙
	private Member writer;
	
	@Column(nullable=false)
	private String title;
	
	@Column(nullable=false)
	private String content;

//	@Column(nullable=false)
//	private Date w_date;

	@Column(nullable=false)
	private String pwd;

	private String img_path;
	
	@Transient // 移쇰읆�쑝濡� 留뚮뱾�뼱吏�吏� �븡�쓬
	private MultipartFile file;
	
	@Column(nullable = false)
	private Date time;
	
	@PrePersist	// insert �닔�뻾�떆 �옄�룞 �깮�꽦 : 湲� �옉�꽦 �떆媛� �옄�룞 二쇱엯
	public void writingTime() {
		time = new Date();
	}
}

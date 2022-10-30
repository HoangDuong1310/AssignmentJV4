package model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity
public class GaiAnimeModel {

	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		@Column
		private String name;
		@Column
		private String description;
		@Column
		private BigDecimal price;
		@Column
		private Integer quantity;
		@Column
		private String createdUser;
		@Column
		private LocalDate createdDate;
		@Column
		private String lastModifiedUser;
		@Column
		private LocalDate lastModifiedDate;
		@Column
		private Boolean isDeleted;
		@Column
		private String custom;
		@Column
		private String power;
		@Column
		private Integer amountHarem;
		@Column
		private String img;
		@Column
		private String video;
		@Column
		private Boolean status;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public BigDecimal getPrice() {
			return price;
		}
		public void setPrice(BigDecimal price) {
			this.price = price;
		}
		public Integer getQuantity() {
			return quantity;
		}
		public void setQuantity(Integer quantity) {
			this.quantity = quantity;
		}
		public String getCreatedUser() {
			return createdUser;
		}
		public void setCreatedUser(String createdUser) {
			this.createdUser = createdUser;
		}
		public LocalDate getCreatedDate() {
			return createdDate;
		}
		public void setCreatedDate(LocalDate createdDate) {
			this.createdDate = createdDate;
		}
		public String getLastModifiedUser() {
			return lastModifiedUser;
		}
		public void setLastModifiedUser(String lastModifiedUser) {
			this.lastModifiedUser = lastModifiedUser;
		}
		public LocalDate getLastModifiedDate() {
			return lastModifiedDate;
		}
		public void setLastModifiedDate(LocalDate lastModifiedDate) {
			this.lastModifiedDate = lastModifiedDate;
		}
		public Boolean getIsDeleted() {
			return isDeleted;
		}
		public void setIsDeleted(Boolean isDeleted) {
			this.isDeleted = isDeleted;
		}
		public String getCustom() {
			return custom;
		}
		public void setCustom(String custom) {
			this.custom = custom;
		}
		public String getPower() {
			return power;
		}
		public void setPower(String power) {
			this.power = power;
		}
		public Integer getAmountHarem() {
			return amountHarem;
		}
		public void setAmountHarem(Integer amountHarem) {
			this.amountHarem = amountHarem;
		}
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}
		public String getVideo() {
			return video;
		}
		public void setVideo(String video) {
			this.video = video;
		}
		public Boolean getStatus() {
			return status;
		}
		public void setStatus(Boolean status) {
			this.status = status;
		}
		public GaiAnimeModel(Integer id, String name, String description, BigDecimal price, Integer quantity,
				String createdUser, LocalDate createdDate, String lastModifiedUser, LocalDate lastModifiedDate,
				Boolean isDeleted, String custom, String power, Integer amountHarem, String img, String video,
				Boolean status) {
			super();
			this.id = id;
			this.name = name;
			this.description = description;
			this.price = price;
			this.quantity = quantity;
			this.createdUser = createdUser;
			this.createdDate = createdDate;
			this.lastModifiedUser = lastModifiedUser;
			this.lastModifiedDate = lastModifiedDate;
			this.isDeleted = isDeleted;
			this.custom = custom;
			this.power = power;
			this.amountHarem = amountHarem;
			this.img = img;
			this.video = video;
			this.status = status;
		}
		public GaiAnimeModel() {
			super();
		}
		@Override
		public String toString() {
			return "GaiAnimeModel [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
					+ ", quantity=" + quantity + ", createdUser=" + createdUser + ", createdDate=" + createdDate
					+ ", lastModifiedUser=" + lastModifiedUser + ", lastModifiedDate=" + lastModifiedDate
					+ ", isDeleted=" + isDeleted + ", custom=" + custom + ", power=" + power + ", amountHarem="
					+ amountHarem + ", img=" + img + ", video=" + video + ", status=" + status + "]";
		}
		
		
		
		

}
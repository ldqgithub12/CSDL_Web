namespace LeDangQuang_CaiDatLayout.Areas.Admin.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;
    [Table("TacGia")]
    public partial class TacGia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TacGia()
        {
            Saches = new HashSet<Sach>();
        }

        [Key]
        public int MaTG { get; set; }

        [Required(ErrorMessage ="Họ tên không được bỏ trống")]
        [StringLength(50)]
        [DisplayName("Họ tên")]
        public string HoTen { get; set; }

        [Column(TypeName = "date")]
        [DisplayName("Ngày sinh")]
        [Required(ErrorMessage ="Ngày sinh không được bỏ trống")]
        public DateTime NgaySinh { get; set; }

        [Column(TypeName = "ntext")]
        [DisplayName("Tiểu sử")]
        [Required(ErrorMessage ="Tiểu sử không được bỏ trống")]
        public string TieuSu { get; set; }

        [Required(ErrorMessage ="Quê quán không được bỏ trống")]
        [DisplayName("Quê quán")]
        [StringLength(40)]
        public string QueQuan { get; set; }

        //[Required(ErrorMessage ="Ảnh không được bỏ trống")]
        [DisplayName("Ảnh")]
        [StringLength(100)]
        public string Anh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sach> Saches { get; set; }
    }
}

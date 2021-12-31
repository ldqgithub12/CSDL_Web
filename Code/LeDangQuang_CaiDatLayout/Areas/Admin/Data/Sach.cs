namespace LeDangQuang_CaiDatLayout.Areas.Admin.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sach")]
    public partial class Sach
    {
        [Key]
        public int MaSach { get; set; }

        public int MaTG { get; set; }

        [Required]
        [StringLength(60)]
        public string TieuDe { get; set; }

        [Column(TypeName = "money")]
        [DisplayFormat(DataFormatString ="{0:#,###}")]
        public decimal Gia { get; set; }

        [Column(TypeName = "ntext")]
        public string MoTa { get; set; }

        [Required]
        [StringLength(100)]
        public string AnhBia { get; set; }

        public int SoLuong { get; set; }

        public virtual TacGia TacGia { get; set; }
    }
}

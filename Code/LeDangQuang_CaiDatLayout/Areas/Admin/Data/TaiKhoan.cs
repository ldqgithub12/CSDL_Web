namespace LeDangQuang_CaiDatLayout.Areas.Admin.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiKhoan")]
    public partial class TaiKhoan
    {
        [Key]
        public int MaTK { get; set; }

        [Required(ErrorMessage ="Tên đăng nhập không được bỏ trống")]
        [StringLength(20)]
        public string TenDN { get; set; }

        [Required(ErrorMessage ="Mật khẩu không được bỏ trống")]
        [StringLength(20)]
        public string MatKhau { get; set; }

        public bool Quyen { get; set; }

        [Required]
        [StringLength(34)]
        public string HoTen { get; set; }
    }
}

<script>
    $(document).ready(function() {
        $(".show_modal").click(function() {
            let id = $(this).data("id")
            let token = $("input[name=_token]").val();

            $.ajax({
                type: "GET",
                url: "user/json/" + id,
                data: {
                    id: id,
                    _token: token
                },
                success: function(data) {
                    $("#name").html(data.data.name)
                    $("#email").html(data.data.email)
                    $("#password").html(data.data.password)
                }
            })
        })

        $("form[name='user_create']").submit(function(e) {
            e.preventDefault();
            let token = $("input[name=_token]").val();

            $.ajax({
                type: "POST",
                url: "user/json",
                data: {
                    _token: token,
                    name: $("#name_create").val(),
                    email: $("#email_create").val(),
                    password: $("#password_create").val(),
                },
                success: function(data) {
                    Swal.fire({
                        title: "Berhasil",
                        text: "Data berhasil ditambahkan.",
                        icon: "success",
                        timerProgressBar: true,
                        onBeforeOpen: () => {
                            Swal.showLoading();
                            timerInterval = setInterval(() => {
                                const content = Swal.getContent();
                                if (content) {
                                    const b = content.querySelector("b");
                                    if (b) {
                                        b.textContent = Swal.getTimerLeft();
                                    }
                                }
                            }, 100);
                        },
                        showConfirmButton: false
                    });
                    setTimeout(function() {
                        location.reload();
                    }, 500)
                },
                error: function(data) {
                    console.log('gagal');
                    console.log(data);
                }
            })
        })

        $(".swal-edit-button").click(function() {
            let id = $(this).data("id");
            let token = $("input[name=_token]").val();

            // Injecting an id with relevant data on click for updating on #swal-update-button
            $("#swal-update-button").attr("data-id", id);

            $.ajax({
                url: "user/json/" + id + "/edit",
                type: "GET",
                data: {
                    id: id,
                    _token: token
                },
                success: function(data) {
                    $("#name_edit").val(data.data.name)
                    $("#email_edit").val(data.data.email)
                },
                error: function(data) {
                    Swal.fire("Gagal!", "Tidak dapat melihat info.", "warning");
                }
            });
        });

        $("#swal-update-button").click(function(e) {
            e.preventDefault();
            // Get id injected by .swal-edit-button
            let id = $("#swal-update-button").attr("data-id");
            let token = $("input[name=_token]").val();

            let name = $("#name_edit").val();
            let email = $("#email_edit").val();

            $.ajax({
                url: "user/json/" + id,
                type: "PUT",
                data: {
                    _token: token,
                    name: $("#name_edit").val(),
                    email: $("#email_edit").val(),
                },
                success: function(data) {
                    Swal.fire({
                        title: "Berhasil",
                        text: "Data berhasil diubah.",
                        icon: "success",
                        timerProgressBar: true,
                        onBeforeOpen: () => {
                            Swal.showLoading();
                            timerInterval = setInterval(() => {
                                const content = Swal.getContent();
                                if (content) {
                                    const b = content.querySelector("b");
                                    if (b) {
                                        b.textContent = Swal.getTimerLeft();
                                    }
                                }
                            }, 100);
                        },
                        showConfirmButton: false
                    });
                    setTimeout(function() {
                        location.reload();
                    }, 800)
                },
                error: function(data) {
                    Swal.fire("Gagal!", "Tidak dapat mengubah data.", "warning");
                }
            });
        });

        $("#swal-update2-button").click(function(e) {
            e.preventDefault();
            // Get id injected by .swal-edit-button
            let id = $("#swal-update2-button").attr("data-id");
            let token = $("input[name=_token]").val();

            let passowrd = $("#name_password").val();

            $.ajax({
                url: "user/json/" + id,
                type: "PUT",
                data: {
                    _token: token,
                    password: $("#name_password").val(),
                },
                success: function(data) {
                    Swal.fire({
                        title: "Berhasil",
                        text: "Data berhasil diubah.",
                        icon: "success",
                        timerProgressBar: true,
                        onBeforeOpen: () => {
                            Swal.showLoading();
                            timerInterval = setInterval(() => {
                                const content = Swal.getContent();
                                if (content) {
                                    const b = content.querySelector("b");
                                    if (b) {
                                        b.textContent = Swal.getTimerLeft();
                                    }
                                }
                            }, 100);
                        },
                        showConfirmButton: false
                    });
                    setTimeout(function() {
                        location.reload();
                    }, 800)
                },
                error: function(data) {
                    Swal.fire("Gagal!", "Tidak dapat mengubah data.", "warning");
                }
            });
        });

        $(".swal-delete-button").click(function() {
            Swal.fire({
                title: "Hapus?",
                text: "Data tidak akan bisa dikembalikan.",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Ya",
                cancelButtonText: "Batal"
            }).then(result => {
                if (result.value) {
                    let id = $(this).data("id");
                    let token = $("input[name=_token]").val();
                    $.ajax({
                        url: "user/json/" + id,
                        type: "DELETE",
                        data: {
                            id: id,
                            _token: token
                        },
                        success: function(data) {
                            Swal.fire({
                                title: "Berhasil",
                                text: "Data berhasil dihapus.",
                                icon: "success",
                                timerProgressBar: true,
                                onBeforeOpen: () => {
                                    Swal.showLoading();
                                    timerInterval = setInterval(() => {
                                        const content = Swal.getContent();
                                        if (content) {
                                            const b = content.querySelector("b");
                                            if (b) {
                                                b.textContent = Swal.getTimerLeft();
                                            }
                                        }
                                    }, 100);
                                },
                                showConfirmButton: false
                            });

                            setTimeout(function() {
                                location.reload();
                            }, 500);
                        },
                        error: function(data) {
                            Swal.fire("Gagal!", "Data gagal dihapus.", "warning");
                        }
                    });
                }
            });
        });

    })
</script>
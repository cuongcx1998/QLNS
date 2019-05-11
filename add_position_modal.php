<section>
    <div class="modal fade" id="add_position" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class = "panel panel-primary">
                    <div class = "panel-heading">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4>Thêm vị trí</h4>
                    </div>
                </div>
                <div class="modal-header">
                </div>
                <form action="add_position_query.php" method="POST">
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon">
                        Tên vị trí:
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="pos_name" placeholder="Tên vị trí" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success btn-lg" name = "save">Lưu</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</section>
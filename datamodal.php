<div class="mb-3">
    <label for="departemen" class="form-label">Departemen</label>
    <select name="departemen" id="departemen" class="form-select">
        <option value="">Semua Departemen</option>
        <?php
        // Ambil daftar departemen dari database
        $departemen_query = "SELECT DISTINCT departemen FROM blogs";
        $departemen_result = mysqli_query($conn, $departemen_query);
        while ($row = mysqli_fetch_assoc($departemen_result)) {
            $selected = ($departemen_filter == $row['departemen']) ? 'selected' : '';
            echo "<option value='{$row['departemen']}' $selected>{$row['departemen']}</option>";
        }
        ?>
    </select>
</div>
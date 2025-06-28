<section class="depth-2 px-4 py-5">
    <h2>{{modeDsc}}</h2>
</section>
<section class="depth-2 px-4 py-4 my-4 grid row">
   <form 
        method="POST"
        action="index.php?page=Maintenance-Products-Category&mode={{mode}}&id={{id}}"
        class="grid col-12 col-m-8 offset-m-2 col-l-6 offset-l-3"
    >
        <div class="row my-2">
            <label for="id" class="col-12 col-m-4 col-l-3">Id:</label>
            <input 
                type="text"
                name="id"
                id="id"
                value="{{id}}"
                placeholder="Catégory Id"
                class="col-12 col-m-8 col-l-9"
                readonly
             />
        </div>
        <div class="row my-2">
            <label for="category" class="col-12 col-m-4 col-l-3">Category:</label>
            <input 
                type="text"
                name="categoria"
                id="category"
                value="{{categoria}}"
                placeholder="Name of Category"
                class="col-12 col-m-8 col-l-9"
             />
        </div>
        <div class="row my-2">
            <label for="status" class="col-12 col-m-4 col-l-3">Status:</label>
            <select id="status" name="estado">
                <option value="ACT" {{selectedACT}}>Active</option>
                <option value="INA" {{selectedINA}}>Disabled</option>
                <option value="RTR" {{selectedRTR}}>Retired</option>
            </select>
        </div>
        <div class="row">
            <div class="col-12 right">
                <button class="" id="btnCancel" type="button">Cancel</button>
                &nbsp;
                <button class="primary" type="submit">Confirm</button>
           </div>
        </div>
    </form>
</section>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("btnCancel")
            .addEventListener("click", (e)=>{
                e.preventDefault();
                e.stopPropagation();
                window.location.assign("index.php?page=Maintenance-Products-Categories");
            });
    });
</script>
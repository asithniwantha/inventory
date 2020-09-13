<div class=" table-responsive-xl">
    <table class="table table-dark table-striped table-hover table-sm overflow-auto table-fixed" line-height="10px">
        <thead class="position-sticky top-0 " position="fixed">
            <tr align="center" class="position-sticky top-0" height="2px">
                <th scope="col">id</th>
                <th scope="col">Seller Name</th>
                <th scope="col">status</th>
                <th scope="col">Payment</th>
                <th scope="col">method</th>
                <th scope="col">amount</th>
                <th scope="col">grand total</th>
                <th scope="col">purchased price</th>
                <th scope="col">product name</th>
                <th scope="col">model</th>
                <th scope="col">sub</th>
            </tr>
        </thead>
        <tbody align="center" style="height: 5px;" overflow-y="scroll">
            @foreach($tableData as $data)
            <tr>
                <th scope="row">
                    <a href="products/edit/{{ $data->pdid }}" class="text-white">
                        {{$data->pdid}}
                    </a>
                </th>
                <td><a href="products/edit/{{ $data->pdid }}" class="text-white">{{ $data->seller_name }} </a>
                </td>
                <td>{{ $data->status }}</td>
                <td>{{ $data->payment_status }}</td>
                <td>{{ $data->payment_method }}</td>
                <td>{{ $data->amount }}</td>
                <td>{{ $data->grand_total }}</td>
                <td>{{ $data->purchased_price }}</td>
                <td>{{ $data->product_name }}</td>
                <td>{{ $data->model }}</td>
                <td>{{ $data->sub_model }}</td>

            </tr>
            @endforeach
        </tbody>
    </table>
</div>

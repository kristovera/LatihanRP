@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class="container">
                        <tr>
                        <td><h4>Hubungi Koordinator</h4></td>
                        </tr>
                        <tr>
                        <td>
                        <p>
                        Argo Wibowo, S.T., M.T
                                <br />

                                EMAIL
                                argo@si.ukdw.ac.id
                                <br />

                               
                        </p>
                         </td>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

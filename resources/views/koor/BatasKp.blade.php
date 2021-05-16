<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="/fontawesome-free/css/all.min.css">

    <!-- Link CSS -->
    <link rel="stylesheet" href="/css/home.css">


    <title>SIKP | Batas KP</title>
  </head>
  <body>

    <!-- Navigasi -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-success">
            <div class="container-fluid">
            <a class="navbar-brand font-weight-bold text-white" href="/koor">SIKP</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                <a class="nav-link text-white font-weight-bold" href="/koor/home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white font-weight-bold" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Layanan
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/koor/suratketerangan">Verifikasi Surat Keterangan</a>
                <a class="dropdown-item" href="/koor/prakp">Verifikasi Pengajuan Pra KP</a>
                <a class="dropdown-item" href="/koor/kp">Verifikasi Pengajuan KP</a>
                <a class="dropdown-item" href="/koor/daftarkp">Daftar Registrasi KP</a>
                <a class="dropdown-item" href="/koor/bataskp">Set Batas KP </a>
                <a class="dropdown-item" href="/koor/jadwalkp">Set Jadwal KP</a>
            </ul>
            <form class="form-inline my-2 my-lg-0 ml-auto">
                <a href="" class="btn font-weight-bold text-white">Koordinator</a>
                <a href="/koor/profile" class="btn text-white"><i class="fas fa-user" data-toggle="tooltip" title="User Profile"></i></a> 
            </form>
            </div>
            </div>
        </nav>
    </header>

      <!-- Main Content -->
      <main>
        <div class="container-fluid mt-2">
            <h2><i class="fas fa-calendar-alt mr-2"></i>Persetujuan KP</h2>
            <!-- Form -->
            <div class="container-fluid">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">No</th>
                        <th scope="col">Judul KP</th>
                        <th scope="col">Penguji</th>
                        <th scope="col">Tanggal Ujian</th>
                        <th scope="col">Tahun</th>
                        <th scope="col">Status</th>
                        <th scope="col">Batas KP</th>
                        <th scope="col">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($kp as $key)
                        <form action="/koor/prosesbataskp">
                          <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $key->judul }}</td>
                            <td>
                                @if ($key->penguji == 0)
                                    -
                                @else
                                    {{ $key->nama }}
                                @endif
                            </td>
                            <td>
                                @if ($key->tanggal_ujian == '1111-11-11')
                                    -
                                @else
                                    {{ date('d F Y', strtotime($key->tanggal_ujian)) }}
                                @endif
                            </td>
                            <td>
                                {{ $key->tahun.$key->semester }}
                                (
                                    @if($key->semester == 1)
                                        {{ $key->tahun }} Ganjil
                                    @else
                                        {{ $key->tahun }} Genap
                                    @endif
                                )
                            </td>
                            <td>
                                @if($key->status == 0)
                                    Belum Disetujui
                                @else
                                    Sudah Disetujui
                                @endif
                            </td>
                            <td>
                                @if($key->tanggal_batas != null)
                                    <input type="date" class="form-control" name="bataskp" value="{{ $key->tanggal_batas }}">
                                @else
                                    <input type="date" class="form-control" name="bataskp">
                                @endif
                                <input type="hidden" class="form-control" name="id_kp" value="{{ $key->id_kp }}">
                            </td>
                            <td>
                                <button type="submit" class="btn btn-primary">Set Batas KP</button>
                            </td>
                          </tr> 
                        </form>                               
                        @endforeach
                    </tbody>
                </table>
            </div>
                
    </main>

   


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
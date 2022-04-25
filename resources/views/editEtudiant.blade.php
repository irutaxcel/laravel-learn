@extends("layouts.master")

@section("contenu")
<div class="my-3 p-3 bg-body rounded shadow-sm">
    <h3 class="border-bottom pb-2 mb-4">Edit Student</h3>

    <div class="mt-4">
        @if(session()->has("success"))
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>
        @endif
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
        <form style="width:65%" method="post" action="{{ route('etudiant.update', ['etudiant'=>$etudiant->id]) }}">
            @csrf
            <input type="hidden" name="_method" value="put">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Nom</label>
                <input type="text" class="form-control" name="nom" value="{{ $etudiant->nom }}">
                <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Prenom</label>
                <input type="text" class="form-control" name="prenom" value="{{ $etudiant->prenom }}">
                <!-- <div id=" emailHelp" class="form-text">We'll never share your email with anyone else.
            </div> -->
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Classe</label>
                <select class="form-control" name="classe_id" id="">
                    <option value=""></option>
                    @foreach ($classes as $classes)
                    @if ($classes->id == $etudiant->classe_id)
                    <option value="{{ $classes->id  }}" selected>{{ $classes->libelle  }}</option>
                    @else
                    <option value="{{ $classes->id  }}">{{ $classes->libelle  }}</option>
                    @endif
                    @endforeach
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
            <a href="{{ route('etudiant') }}" class="btn btn-danger">Annuler</a>
        </form>
    </div>

</div>

@endsection
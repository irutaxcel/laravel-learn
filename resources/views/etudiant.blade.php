@extends("layouts.master")

@section("contenu")
<div class="my-3 p-3 bg-body rounded shadow-sm">
    <h3 class="border-bottom pb-2 mb-4">Listes des etudiant inscrit</h3>

    <div class="mt-4">
        <div class="d-flex justify-content-between mb-4">
            {{ $etudiants->links() }}
            <div>
                <a href="{{ route('etudiant.create') }}" class="btn btn-primary">Add</a>
            </div>
        </div>

        @if(session()->has("successDelete"))
        <div class="alert alert-success">
            {{ session()->get('successDelete') }}
        </div>
        @endif
        

        <table class="table table-bordered table-hover mt-2">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Prenom</th>
                    <th scope="col">Classe</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($etudiants as $etudiant)
                <tr>
                    <th scope="row">{{ $loop->index + 1 }}</th>
                    <td>{{ $etudiant->nom }}</td>
                    <td>{{ $etudiant->prenom }}</td>
                    <td>{{ $etudiant->classe->libelle }}</td>
                    <td>
                        <a href="{{ route('etudiant.edit',['etudiant'=>$etudiant->id]) }} " class="btn btn-info">edit</a>
                        <a href="#" class="btn btn-danger" onclick="if(confirm('Voulez vous supprimer cette etudiant ???')){document.getElementById('form-{{ $etudiant->id }}').submit() }">supprimer</a>
                        <form id="form-{{ $etudiant->id }}" action="{{route('etudiant.supprimer',['etudiant'=>$etudiant->id])}}" method="post">
                            @csrf
                            <input type="hidden" name="_method" value="delete">
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>

</div>

@endsection
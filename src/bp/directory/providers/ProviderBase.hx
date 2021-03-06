package bp.directory.providers;

class ProviderBase {
	public var dataset:String;
	public var projection:DynamicBuilder = ({} : Dynamic);
	public var query:DynamicBuilder = ({} : Dynamic);
	public var scope:Array<String> = [];
	public var selector = v -> v;
	public var queryEngine:bp.directory.query.Engine;

	public function fetch():Cursor {
		throw 'abstract';
	}

	public function delete():Promise<Dynamic>
		throw 'abstract';

	public function update(_):Promise<Dynamic>
		throw 'abstract';

	public function create(_):Promise<Dynamic>
        throw 'abstract';
    
    public function makeId(_):Dynamic
        throw 'abstract';
}

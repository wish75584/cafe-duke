 TextView id,name,add,cont,email,age;
    Context context;
    ArrayList<ListItem> list_item;


    public ListAdapter(@NonNull Context context, @NonNull ArrayList<ListItem> list_item) {
        super(context, R.layout.itemlayout, list_item);

        this.context=context;
        this.list_item = list_item;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if(convertView == null){
            LayoutInflater inflatter = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = inflatter.inflate(R.layout.itemlayout,null);

        }
        id= convertView.findViewById(R.id.id);
        name = convertView.findViewById(R.id.name);
        age= convertView.findViewById(R.id.age);
        cont= convertView.findViewById(R.id.cont);
        add= convertView.findViewById(R.id.add);
        age= convertView.findViewById(R.id.age);


        id.setText(list_item.get(position).getId());
        name.setText(list_item.get(position).getName());
        age.setText(list_item.get(position).getAge());
        cont.setText(list_item.get(position).getContact());
        add.setText(list_item.get(position).getAddr());
        age.setText(list_item.get(position).getAge());

        return  convertView;


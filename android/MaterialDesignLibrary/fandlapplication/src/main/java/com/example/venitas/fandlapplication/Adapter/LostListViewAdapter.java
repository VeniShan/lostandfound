package com.example.venitas.fandlapplication.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.example.venitas.fandlapplication.Entity.LostItem;
import com.example.venitas.fandlapplication.R;

import java.util.ArrayList;

/**
 * Created by Venitas on 16/3/18.
 */
public class LostListViewAdapter extends BaseAdapter  {

    private ArrayList<LostItem> lostItems;
    private int id;
    private LayoutInflater inflater;
    private Context context;



    public LostListViewAdapter(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return context;
    }

    public LostListViewAdapter(int id, ArrayList<LostItem> lostItems, Context context) {
        this.context = context;
        this.id = id;
        this.lostItems = lostItems;
    }

    @Override
    public int getCount() {
        return lostItems.size();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LinearLayout lost_list = null;
        if(convertView != null){
            lost_list = (LinearLayout) convertView;
        }
        else{
            lost_list = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.lost_listcell,null);
        }

        ImageView itemIcon = (ImageView) lost_list.findViewById(R.id.item_icon);
        TextView itemName = (TextView) lost_list.findViewById(R.id.item_name);
        TextView itemStation = (TextView) lost_list.findViewById(R.id.item_station);
        TextView itemDate = (TextView) lost_list.findViewById(R.id.item_date);

        LostItem lostItem = lostItems.get(position);
        itemName.setText(lostItem.getName().toString());
        itemIcon.setImageResource(R.drawable.icn_button);
        itemStation.setText(lostItem.getStationName().toString());
        itemDate.setText(lostItem.getDatetime());


        return lost_list;
    }

    @Override
    public Object getItem(int position) {
        return lostItems.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

}

package com.example.venitas.fandlapplication.Activity;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.example.venitas.fandlapplication.Entity.LostItem;
import com.example.venitas.fandlapplication.Adapter.LostListViewAdapter;
import com.example.venitas.fandlapplication.R;

import java.util.ArrayList;
import java.util.logging.Handler;

public class LostListActivity extends AppCompatActivity {

    private ListView listView;
    private ArrayList<LostItem> lostItems = new ArrayList<LostItem>();
    private ListAdapter listAdapter;
    private Handler hander = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lost_list);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setTitle("捡拾物品列表");
        setSupportActionBar(toolbar);

        lostItems.add(new LostItem(1,"钱包","2号线 浦东国际机场站","1小时前"));
        lostItems.add(new LostItem(2,"手机","8号线 黄兴路站","1小时前"));
        lostItems.add(new LostItem(3,"黑色雨伞","1号线 上海火车站","3小时前"));
        lostItems.add(new LostItem(4,"褐色行李箱","1号线 上海火车站","5小时前"));
        lostItems.add(new LostItem(5,"钱包","10号线 虹桥火车站","8小时前"));
        lostItems.add(new LostItem(6,"白色钱包","12号线 曲阜路站","1天前"));
        lostItems.add(new LostItem(7,"手机","2号线 世纪大道","1天前"));
        lostItems.add(new LostItem(8,"雨伞","1号线 人民广场","2天前"));
        lostItems.add(new LostItem(9,"雨伞","1号线 上海火车站","1周前"));
        lostItems.add(new LostItem(10,"雨伞","1号线 上海火车站","1周前"));
        lostItems.add(new LostItem(11,"雨伞","1号线 上海火车站","2周前"));

        listView=(ListView) super.findViewById(R.id.lost_listView);
        listView.setAdapter(new LostListViewAdapter(1,lostItems,this));

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });
    }



}

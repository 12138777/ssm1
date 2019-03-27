package com.hwua.entity;

public class Type {
    private Integer type_id;
    private Integer type_big;
    private Integer tupe_small;
    private String tupe_name;

    public Type() {
    }

    public Type(Integer type_id, Integer type_big, Integer tupe_small, String tupe_name) {
        this.type_id = type_id;
        this.type_big = type_big;
        this.tupe_small = tupe_small;
        this.tupe_name = tupe_name;
    }

    public Integer getType_id() {
        return type_id;
    }

    public void setType_id(Integer type_id) {
        this.type_id = type_id;
    }

    public Integer getType_big() {
        return type_big;
    }

    public void setType_big(Integer type_big) {
        this.type_big = type_big;
    }

    public Integer getTupe_small() {
        return tupe_small;
    }

    public void setTupe_small(Integer tupe_small) {
        this.tupe_small = tupe_small;
    }

    public String getTupe_name() {
        return tupe_name;
    }

    public void setTupe_name(String tupe_name) {
        this.tupe_name = tupe_name;
    }

    @Override
    public String toString() {
        return "Type{" +
                "type_id=" + type_id +
                ", type_big=" + type_big +
                ", tupe_small=" + tupe_small +
                ", tupe_name='" + tupe_name + '\'' +
                '}';
    }
}

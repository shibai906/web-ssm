package com.zhao.model;

public class DateDictionary extends CommonFeild {
    public String name ;
    public String field ;
    public String descri ;
    public String typeName ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }


    @Override
    public String toString() {
        return "DateDictionary{" +
                ", name='" + name + '\'' +
                ", field='" + field + '\'' +
                ", descri='" + descri + '\'' +
                ", typeName='" + typeName + '\'' +
                '}';
    }
}

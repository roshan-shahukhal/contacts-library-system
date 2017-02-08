package com.shahukhalroshan.model;

/**
 * Created by i20082 on 2/7/2017.
 */
public class Person {

    private String firstname;
    private String lastname;
    private String mobileNumber;
    private String address;
    private String email;

    public Person(String firstname, String lastname, String mobileNumber, String address, String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.mobileNumber = mobileNumber;
        this.address = address;
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

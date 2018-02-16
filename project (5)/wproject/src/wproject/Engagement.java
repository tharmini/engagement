package wproject;

public class Engagement {
    private String id;
    private String customer_name;
    private String project_name;
    private String person_email;
    private String engagement_code;
    private String engagement_nature;
    private String country;
    private String start_date;
    private String end_date;
    private String allocation_type2;
    private String engagement_status;
    private String status;

    public Engagement() {
    }

    public Engagement(String id, String person_email, String customer_name, String status, String project_name,
                      String engagement_code, String engagement_nature, String country, String start_date, String end_date,
                      String engagement_status, String allocation_type2) {

        this.id = id;
        this.customer_name = customer_name;
        this.project_name = project_name;
        this.engagement_code = engagement_code;
        this.engagement_nature = engagement_nature;
        this.country = country;
        this.start_date = start_date;
        this.end_date = end_date;
        this.engagement_status = engagement_status;
        this.allocation_type2 = allocation_type2;
        this.person_email = person_email;
        this.status = status;

    }

    public String getId() {
        return id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public String getProject_name() {
        return project_name;
    }

    public String getEngagement_code() {
        return engagement_code;
    }

    public String getEngagement_nature() {
        return engagement_nature;
    }

    public String getCountry() {
        return country;
    }

    public String getStart_date() {
        return start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public String engagement_status() {
        return engagement_status;
    }

    public String Status() {
        return status;
    }

    public String person_email() {
        return person_email;
    }

    public String getAllocation_type2() {
        return allocation_type2;
    }

}

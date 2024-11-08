package com.ITS120L.Project.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "feedback")
public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long feedbackId;

    @ManyToOne
    @JoinColumn(name = "eventId", referencedColumnName = "eventId")
    private Event event;

    @ManyToOne
    @JoinColumn(name = "userId", referencedColumnName = "userId")
    private User user;

    private String comment;

    public Feedback() {
    }

    public Feedback(long feedbackId, Event event, User user, String comment) {
        this.feedbackId = feedbackId;
        this.event = event;
        this.user = user;
        this.comment = comment;
    }

    public long getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(long feedbackId) {
        this.feedbackId = feedbackId;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public int hashCode() {
        return Objects.hash(feedbackId, event, user, comment);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Feedback feedback = (Feedback) obj;
        return feedbackId == feedback.feedbackId &&
                Objects.equals(event, feedback.event) &&
                Objects.equals(user, feedback.user) &&
                Objects.equals(comment, feedback.comment);
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "feedbackId=" + feedbackId +
                ", eventTitle='" + (event != null ? event.getTitle() : "No Event") + '\'' + // Display event title if present
                ", userName='" + (user != null ? user.getName() : "No User") + '\'' + // Display user name if present
                ", comment='" + comment + '\'' +
                '}';
    }
}

.class Lcom/fiksu/asotracking/RegistrationEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "RegistrationEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "username"

    .prologue
    .line 17
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventType;->REGISTRATION:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/RegistrationEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 19
    return-void
.end method

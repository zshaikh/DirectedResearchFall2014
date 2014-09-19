.class Lcom/fiksu/asotracking/RatingEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "RatingEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "outcome"
    .parameter "launches"

    .prologue
    .line 17
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventType;->RATING:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/RatingEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fiksu/asotracking/RatingEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public uploadEvent()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/fiksu/asotracking/EventTracker;->uploadEvent()V

    .line 24
    return-void
.end method

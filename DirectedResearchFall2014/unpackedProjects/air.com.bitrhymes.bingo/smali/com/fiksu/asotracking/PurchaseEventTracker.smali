.class Lcom/fiksu/asotracking/PurchaseEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "PurchaseEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "price"
    .parameter "currency"

    .prologue
    .line 17
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventType;->PURCHASE:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p4}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 21
    return-void
.end method

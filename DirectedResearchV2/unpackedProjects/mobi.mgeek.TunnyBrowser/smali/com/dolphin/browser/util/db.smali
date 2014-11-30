.class final Lcom/dolphin/browser/util/db;
.super Ljava/lang/Object;
.source "Tracker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 1632
    invoke-static {p1, p2, p3, p4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1633
    return-void
.end method

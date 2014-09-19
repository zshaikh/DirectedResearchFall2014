.class public Lair/com/bitrhymes/bingo/BingoBashApplication;
.super Landroid/app/Application;
.source "BingoBashApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 12
    invoke-static {p0}, Lcom/fiksu/asotracking/FiksuTrackingManager;->initialize(Landroid/app/Application;)V

    .line 13
    const-string v0, "BingoBashApplication"

    const-string v1, "Fiksu tracking called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method

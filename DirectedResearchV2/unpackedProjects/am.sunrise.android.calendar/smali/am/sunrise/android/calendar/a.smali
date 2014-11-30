.class public Lam/sunrise/android/calendar/a;
.super Landroid/app/Application;
.source "BaseApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-static {p0}, Lcom/a/a/d;->a(Landroid/content/Context;)V

    .line 20
    return-void
.end method

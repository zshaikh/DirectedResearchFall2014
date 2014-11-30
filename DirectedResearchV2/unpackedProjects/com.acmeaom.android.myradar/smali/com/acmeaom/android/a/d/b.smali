.class public abstract Lcom/acmeaom/android/a/d/b;
.super Landroid/app/Activity;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/a/d/b;->startActivity(Landroid/content/Intent;)V

    .line 12
    return-void
.end method

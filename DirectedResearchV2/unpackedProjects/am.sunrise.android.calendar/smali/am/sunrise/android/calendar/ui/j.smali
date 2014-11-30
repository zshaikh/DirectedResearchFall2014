.class Lam/sunrise/android/calendar/ui/j;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/HomeActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/j;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/j;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/j;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    const-class v3, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.class Lam/sunrise/android/calendar/ui/event/edit/e;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/e;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/e;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->h(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 390
    return-void
.end method

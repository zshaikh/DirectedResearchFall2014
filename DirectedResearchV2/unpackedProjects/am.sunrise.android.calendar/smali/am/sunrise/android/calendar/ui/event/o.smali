.class Lam/sunrise/android/calendar/ui/event/o;
.super Ljava/lang/Object;
.source "DescriptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/n;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/n;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/o;->a:Lam/sunrise/android/calendar/ui/event/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/o;->a:Lam/sunrise/android/calendar/ui/event/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/n;->h()V

    .line 59
    return-void
.end method

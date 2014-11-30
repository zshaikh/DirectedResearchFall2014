.class Lam/sunrise/android/calendar/ui/event/details/x;
.super Ljava/lang/Object;
.source "EventDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/v;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/x;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/x;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->b(Lam/sunrise/android/calendar/ui/event/details/v;)V

    .line 178
    return-void
.end method

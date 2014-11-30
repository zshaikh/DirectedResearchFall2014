.class Lam/sunrise/android/calendar/ui/event/details/p;
.super Ljava/lang/Object;
.source "EventDetailsAttendeesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/n;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/p;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/p;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/n;->a(Lam/sunrise/android/calendar/ui/event/details/n;Landroid/view/View;I)V

    .line 149
    return-void
.end method

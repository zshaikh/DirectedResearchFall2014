.class Lam/sunrise/android/calendar/ui/b/o;
.super Ljava/lang/Object;
.source "SRSectionnedChoiceListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/b/n;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/b/n;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/b/o;->a:Lam/sunrise/android/calendar/ui/b/n;

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
    .line 36
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/o;->a:Lam/sunrise/android/calendar/ui/b/n;

    invoke-virtual {v0, p2, p3, p4, p5}, Lam/sunrise/android/calendar/ui/b/n;->a(Landroid/view/View;IJ)V

    .line 37
    return-void
.end method

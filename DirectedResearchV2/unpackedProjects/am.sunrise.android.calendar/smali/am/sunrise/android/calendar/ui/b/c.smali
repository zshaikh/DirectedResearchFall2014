.class Lam/sunrise/android/calendar/ui/b/c;
.super Ljava/lang/Object;
.source "SRChoiceListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/b/b;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/b/b;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/b/c;->a:Lam/sunrise/android/calendar/ui/b/b;

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
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/c;->a:Lam/sunrise/android/calendar/ui/b/b;

    invoke-virtual {v0, p2, p3, p4, p5}, Lam/sunrise/android/calendar/ui/b/b;->a(Landroid/view/View;IJ)V

    .line 36
    return-void
.end method

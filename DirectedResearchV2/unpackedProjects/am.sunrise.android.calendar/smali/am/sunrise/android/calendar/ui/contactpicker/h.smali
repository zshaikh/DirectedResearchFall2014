.class Lam/sunrise/android/calendar/ui/contactpicker/h;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 162
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->c(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getAdapter()Lse/emilsjolander/stickylistheaders/i;

    move-result-object v0

    instance-of v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->d(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/contactpicker/t;->a(Landroid/view/View;)Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    .line 166
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->f(Lam/sunrise/android/calendar/ui/contactpicker/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->c(Ljava/lang/Object;)V

    .line 171
    :goto_1
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->e(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Landroid/view/View;)Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/h;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->a(Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    goto :goto_1
.end method

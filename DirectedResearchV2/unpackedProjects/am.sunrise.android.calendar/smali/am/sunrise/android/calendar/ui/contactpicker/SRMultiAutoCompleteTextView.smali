.class public Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;
.super Lcom/tokenautocomplete/TokenCompleteTextView;
.source "SRMultiAutoCompleteTextView.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/contactpicker/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .prologue
    .line 64
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 66
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 67
    const v2, 0x7f03003d

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;

    .line 70
    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->setOnContactPickerPillListener(Lam/sunrise/android/calendar/ui/contactpicker/n;)V

    .line 72
    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0

    .line 72
    :cond_0
    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    .line 85
    iput-object p1, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/api/models/datas/Contact;)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public performCompletion()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    invoke-super {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    goto :goto_1
.end method

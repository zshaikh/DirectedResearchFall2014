.class Lam/sunrise/android/calendar/ui/settings/b/e;
.super Landroid/widget/BaseAdapter;
.source "PreferenceChoiceDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->a:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->b:Landroid/view/LayoutInflater;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->c:I

    .line 101
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->f:I

    .line 115
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/e;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->d:[Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->e:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/e;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->d:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030092

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 139
    :cond_0
    const v0, 0x7f0b0141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 141
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->d:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/b/e;->f:I

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 145
    return-object p2
.end method

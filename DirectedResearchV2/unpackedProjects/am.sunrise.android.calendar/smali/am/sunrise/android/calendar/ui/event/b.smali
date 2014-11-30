.class Lam/sunrise/android/calendar/ui/event/b;
.super Landroid/widget/BaseAdapter;
.source "AlertSelectionDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/b;->a:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/b;->b:Landroid/view/LayoutInflater;

    .line 130
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/b;->d:I

    .line 138
    return-void
.end method

.method public a([Z)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/b;->c:[Z

    .line 134
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    if-nez p2, :cond_0

    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 161
    :cond_0
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 163
    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v1

    aget-object v1, v1, p1

    .line 165
    invoke-virtual {v1}, Lam/sunrise/android/calendar/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 167
    add-int/lit8 v1, p1, -0x1

    .line 169
    if-lez p1, :cond_1

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/b;->d:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/b;->c:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/b;->a:Landroid/content/Context;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    :goto_0
    return-object p2

    .line 173
    :cond_1
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    if-ltz v1, :cond_2

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/b;->d:I

    if-ne v2, v1, :cond_2

    .line 175
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 176
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/b;->a:Landroid/content/Context;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/b;->a:Landroid/content/Context;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

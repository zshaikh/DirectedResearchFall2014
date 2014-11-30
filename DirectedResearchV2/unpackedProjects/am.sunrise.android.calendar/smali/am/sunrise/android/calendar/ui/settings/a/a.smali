.class public Lam/sunrise/android/calendar/ui/settings/a/a;
.super Landroid/widget/BaseAdapter;
.source "SettingsAddAccountAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:[Lam/sunrise/android/calendar/ui/settings/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->a:Landroid/content/Context;

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->b:Landroid/view/LayoutInflater;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->c:I

    .line 139
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->d()Lam/sunrise/android/calendar/ui/settings/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/c;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    :cond_0
    const v0, 0x7f0b0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/a/b;->d()Lam/sunrise/android/calendar/ui/settings/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/a/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    return-object p2
.end method

.method public a([Lam/sunrise/android/calendar/ui/settings/a/b;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/a;->notifyDataSetInvalidated()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 183
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 197
    if-nez p2, :cond_0

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008f

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 201
    :cond_0
    const v0, 0x7f0b013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    const v1, 0x7f0b013e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    const v2, 0x7f0b013f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->d:[Lam/sunrise/android/calendar/ui/settings/a/b;

    aget-object v4, v4, p1

    .line 207
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/a/b;->c()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 211
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/a/a;->a(I)J

    move-result-wide v1

    .line 217
    add-int/lit8 v0, p1, -0x1

    .line 218
    if-ltz v0, :cond_2

    .line 219
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/a;->a(I)J

    move-result-wide v4

    cmp-long v0, v1, v4

    if-nez v0, :cond_2

    .line 220
    const/4 v0, 0x2

    .line 224
    :goto_0
    add-int/lit8 v4, p1, 0x1

    .line 225
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/a;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 226
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/settings/a/a;->a(I)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 227
    or-int/lit8 v0, v0, 0x4

    .line 231
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_1
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->c:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/a;->c:I

    invoke-virtual {p2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 259
    return-object p2

    .line 233
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 238
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 243
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 248
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

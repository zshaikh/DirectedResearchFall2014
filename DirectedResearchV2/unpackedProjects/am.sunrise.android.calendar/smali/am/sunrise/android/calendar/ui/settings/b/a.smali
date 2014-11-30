.class public Lam/sunrise/android/calendar/ui/settings/b/a;
.super Landroid/widget/BaseAdapter;
.source "PreferenceAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private e:I

.field private f:[Lam/sunrise/android/calendar/ui/settings/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->a:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->b:Landroid/view/LayoutInflater;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0c0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->c:I

    .line 38
    const v1, 0x7f0c0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->d:I

    .line 39
    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->e:I

    .line 40
    return-void
.end method


# virtual methods
.method public a([Lam/sunrise/android/calendar/ui/settings/b/f;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->f:[Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->f:[Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/a;->notifyDataSetInvalidated()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->f:[Lam/sunrise/android/calendar/ui/settings/b/f;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->f:[Lam/sunrise/android/calendar/ui/settings/b/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008f

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_0
    const v0, 0x7f0b013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0b013e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0b013f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->f:[Lam/sunrise/android/calendar/ui/settings/b/f;

    aget-object v4, v4, p1

    .line 91
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->b()I

    move-result v5

    if-nez v5, :cond_6

    .line 92
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->c()I

    move-result v5

    if-nez v5, :cond_7

    .line 99
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->g()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 111
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->h()I

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-static {v6}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 116
    if-ltz v7, :cond_1

    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    aget-object v1, v6, v7

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 124
    :cond_1
    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 132
    :cond_2
    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->f()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_8

    .line 134
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 148
    :cond_4
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->d:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_b

    .line 157
    const/4 v0, 0x2

    .line 160
    :goto_4
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/a;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 161
    or-int/lit8 v0, v0, 0x4

    .line 164
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_5
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->e:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->e:I

    invoke-virtual {p2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 192
    return-object p2

    .line 94
    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 101
    :cond_7
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 136
    :cond_8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v1

    if-nez v1, :cond_9

    .line 138
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 140
    :cond_9
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 150
    :cond_a
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/a;->c:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 166
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 171
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 176
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 181
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_b
    move v0, v3

    goto :goto_4

    .line 164
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

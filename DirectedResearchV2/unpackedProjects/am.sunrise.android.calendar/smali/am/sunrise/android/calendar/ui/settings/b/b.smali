.class public Lam/sunrise/android/calendar/ui/settings/b/b;
.super Landroid/widget/BaseAdapter;
.source "PreferenceCategoriesAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private e:I

.field private f:[Lam/sunrise/android/calendar/ui/settings/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->a:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->b:Landroid/view/LayoutInflater;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const v1, 0x7f0c0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->c:I

    .line 44
    const v1, 0x7f0c0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->d:I

    .line 45
    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->e:I

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 268
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_4

    .line 271
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 273
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 274
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 276
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 278
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 280
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Lam/sunrise/android/calendar/ui/settings/b/c;
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    aget-object v1, v1, v0

    .line 64
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    move-object v0, v1

    .line 70
    :goto_1
    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/b;->b(I)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/c;->a()I

    move-result v0

    int-to-long v0, v0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/b;->b(I)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    const/4 p2, 0x0

    .line 88
    :goto_0
    return-object p2

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    :cond_1
    const v0, 0x7f0b0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a([Lam/sunrise/android/calendar/ui/settings/b/c;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/b;->notifyDataSetInvalidated()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a()[Lam/sunrise/android/calendar/ui/settings/b/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    move v1, v0

    .line 103
    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    aget-object v2, v2, v0

    .line 105
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->f:[Lam/sunrise/android/calendar/ui/settings/b/c;

    aget-object v1, v1, v0

    .line 115
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 117
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 122
    :goto_1
    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 142
    if-nez v0, :cond_0

    .line 143
    const/4 p2, 0x0

    .line 262
    :goto_0
    return-object p2

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03008f

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 150
    :cond_1
    const v1, 0x7f0b013d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 151
    const v2, 0x7f0b013e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    const v3, 0x7f0b013f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->b()I

    move-result v5

    if-nez v5, :cond_7

    .line 155
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->c()I

    move-result v5

    if-nez v5, :cond_8

    .line 162
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_2
    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->g()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 173
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->h()I

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v6}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 178
    if-ltz v7, :cond_2

    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 179
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    aget-object v2, v6, v7

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 186
    :cond_2
    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 194
    :cond_3
    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->f()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_9

    .line 196
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 208
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 210
    :cond_5
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(I)J

    move-result-wide v1

    .line 220
    add-int/lit8 v0, p1, -0x1

    .line 221
    if-ltz v0, :cond_c

    .line 222
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(I)J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_c

    .line 223
    const/4 v0, 0x2

    .line 227
    :goto_5
    add-int/lit8 v3, p1, 0x1

    .line 228
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/b;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 229
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(I)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_6

    .line 230
    or-int/lit8 v0, v0, 0x4

    .line 234
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_6
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->e:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->e:I

    invoke-virtual {p2, v0, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 157
    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 164
    :cond_8
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->c()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 198
    :cond_9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v2

    if-nez v2, :cond_a

    .line 200
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 202
    :cond_a
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 212
    :cond_b
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/b/b;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 236
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 241
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 246
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 251
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_c
    move v0, v4

    goto :goto_5

    .line 234
    nop

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

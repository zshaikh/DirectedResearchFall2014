.class public Lam/sunrise/android/calendar/ui/locationpicker/a;
.super Landroid/widget/BaseAdapter;
.source "LocationPickerAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->a:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->b:I

    .line 53
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->c:I

    .line 54
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->d:I

    .line 55
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    :cond_0
    const v0, 0x7f0b013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    const v1, 0x7f0b013c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    aget-object v2, v2, p1

    .line 244
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->getLocationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-object p2
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 228
    :cond_0
    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v0, 0x7f0b013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->notifyDataSetInvalidated()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    add-int/lit8 v1, p2, -0x1

    if-ltz v1, :cond_0

    .line 187
    const/4 v0, 0x2

    .line 191
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 192
    or-int/lit8 v0, v0, 0x4

    .line 195
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    return-void

    .line 197
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 202
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 207
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 212
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 195
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

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03008c

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 257
    return-object p1

    .line 255
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a()V

    .line 60
    return-void
.end method

.method public a([Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V
    .locals 5

    .prologue
    .line 63
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    .line 64
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "LocationPickerAdapter"

    const-string v1, "predictions %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a()V

    .line 68
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    if-nez p1, :cond_1

    .line 127
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    add-int/lit8 v1, p1, -0x1

    .line 138
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 102
    if-nez p1, :cond_1

    .line 103
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    add-int/lit8 v1, p1, -0x1

    .line 113
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->getItemViewType(I)I

    move-result v0

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 175
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 155
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    const/4 v3, 0x0

    iget v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->d:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->c:I

    iget v6, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->d:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    add-int/lit8 v0, p1, -0x1

    .line 165
    :goto_1
    invoke-direct {p0, v0, p2, p3}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    iget v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->c:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->d:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->c:I

    iget v6, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->d:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/locationpicker/a;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    add-int/lit8 v2, p1, -0x1

    .line 98
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/a;->f:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

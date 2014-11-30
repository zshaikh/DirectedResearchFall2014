.class public Lam/sunrise/android/calendar/ui/settings/a/k;
.super Landroid/support/v4/widget/a;
.source "SettingsNotificationsAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lam/sunrise/android/calendar/ui/settings/a/n;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/n;)V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->c:I

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->a:Landroid/view/LayoutInflater;

    .line 150
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->b:Lam/sunrise/android/calendar/ui/settings/a/n;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->l:I

    .line 153
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->m:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020103

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->n:Landroid/graphics/Bitmap;

    .line 155
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->o:I

    .line 156
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->p:I

    .line 157
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/a/k;)Lam/sunrise/android/calendar/ui/settings/a/n;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->b:Lam/sunrise/android/calendar/ui/settings/a/n;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 208
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-wide v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 214
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->e:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->d:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 184
    :cond_0
    const v0, 0x7f0b0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 189
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->mContext:Landroid/content/Context;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->e:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v4, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->d:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_2
    return-object p2
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 238
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/o;

    .line 240
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->c:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->a:Ljava/lang/String;

    .line 241
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->c:Ljava/lang/String;

    .line 242
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->d:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->b:Ljava/lang/String;

    .line 243
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->d:Ljava/lang/String;

    .line 244
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->e:Ljava/lang/String;

    .line 245
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->f:Ljava/lang/String;

    .line 246
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->g:Ljava/lang/String;

    .line 247
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->h:Ljava/lang/String;

    .line 248
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->i:Z

    .line 250
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->l:I

    iput v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->k:I

    .line 252
    const-string v1, "default"

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->h:Ljava/lang/String;

    .line 257
    :goto_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->e:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->h:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->m:I

    invoke-static {v1, v3, v4, v5}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->j:Ljava/lang/String;

    .line 259
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/a/p;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->n:Landroid/graphics/Bitmap;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->m:I

    invoke-direct {v1, v3, v0, v4, v5}, Lam/sunrise/android/calendar/ui/settings/a/p;-><init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/settings/a/o;Landroid/graphics/Bitmap;I)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->m:Lam/sunrise/android/calendar/ui/settings/a/p;

    .line 263
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->m:Lam/sunrise/android/calendar/ui/settings/a/p;

    invoke-virtual {v1, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 267
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->i:Z

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 273
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/k;->a(I)J

    move-result-wide v3

    .line 275
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 276
    if-ltz v0, :cond_3

    .line 277
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/k;->a(I)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    .line 278
    const/4 v0, 0x2

    .line 282
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 283
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 284
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/a/k;->a(I)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 285
    or-int/lit8 v0, v0, 0x4

    .line 289
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_3
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->o:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->o:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 316
    return-void

    .line 248
    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 254
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->k:I

    goto/16 :goto_1

    .line 291
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 296
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 301
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 306
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2

    .line 289
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

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0b0016

    .line 320
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 321
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/a/o;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/settings/a/o;-><init>()V

    .line 322
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    .line 323
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 324
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/CheckedTextView;->setTag(ILjava/lang/Object;)V

    .line 325
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/l;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/a/l;-><init>(Lam/sunrise/android/calendar/ui/settings/a/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/widget/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "connection_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->c:I

    .line 165
    const-string v1, "connection_info"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->d:I

    .line 166
    const-string v1, "connection_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->e:I

    .line 167
    const-string v1, "calendar_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->f:I

    .line 168
    const-string v1, "calendar_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->g:I

    .line 169
    const-string v1, "calendar_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->h:I

    .line 170
    const-string v1, "calendar_description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->i:I

    .line 171
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->j:I

    .line 172
    const-string v1, "calendar_reminders"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/k;->k:I

    .line 175
    :cond_0
    return-object v0
.end method

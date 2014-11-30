.class public Lam/sunrise/android/calendar/ui/settings/a/q;
.super Landroid/support/v4/widget/a;
.source "SettingsVisibleCalendarsAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lam/sunrise/android/calendar/ui/settings/a/t;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private n:I

.field private o:Landroid/graphics/Bitmap;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/t;)V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->c:Ljava/util/HashMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->d:I

    .line 153
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->a:Landroid/view/LayoutInflater;

    .line 154
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->b:Lam/sunrise/android/calendar/ui/settings/a/t;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->m:I

    .line 157
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->n:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020103

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->o:Landroid/graphics/Bitmap;

    .line 159
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->p:I

    .line 160
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->q:I

    .line 161
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/a/q;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/a/q;)Lam/sunrise/android/calendar/ui/settings/a/t;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->b:Lam/sunrise/android/calendar/ui/settings/a/t;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 216
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-wide v0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 222
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->f:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->e:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
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
    .line 188
    if-nez p2, :cond_0

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 192
    :cond_0
    const v0, 0x7f0b0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 197
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->mContext:Landroid/content/Context;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->f:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget v4, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->e:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_2
    return-object p2
.end method

.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 246
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    .line 248
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->d:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->a:Ljava/lang/String;

    .line 249
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->c:Ljava/lang/String;

    .line 250
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->b:Ljava/lang/String;

    .line 251
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->d:Ljava/lang/String;

    .line 252
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->e:Ljava/lang/String;

    .line 253
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->f:Ljava/lang/String;

    .line 254
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->g:Ljava/lang/String;

    .line 255
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->h:Ljava/lang/String;

    .line 256
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->l:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->i:Z

    .line 258
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->m:I

    iput v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->k:I

    .line 260
    const-string v1, "default"

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->h:Ljava/lang/String;

    .line 265
    :goto_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->e:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->h:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->n:I

    invoke-static {v1, v3, v4, v5}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->j:Ljava/lang/String;

    .line 267
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/a/v;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->o:Landroid/graphics/Bitmap;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->n:I

    invoke-direct {v1, v3, v0, v4, v5}, Lam/sunrise/android/calendar/ui/settings/a/v;-><init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/settings/a/u;Landroid/graphics/Bitmap;I)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->m:Lam/sunrise/android/calendar/ui/settings/a/v;

    .line 271
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->m:Lam/sunrise/android/calendar/ui/settings/a/v;

    invoke-virtual {v1, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 275
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->c:Ljava/util/HashMap;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->c:Ljava/util/HashMap;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 284
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/q;->a(I)J

    move-result-wide v3

    .line 286
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 287
    if-ltz v0, :cond_4

    .line 288
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/q;->a(I)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_4

    .line 289
    const/4 v0, 0x2

    .line 293
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 294
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 295
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/a/q;->a(I)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 296
    or-int/lit8 v0, v0, 0x4

    .line 300
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 326
    :goto_4
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->p:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->p:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 327
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 262
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->k:I

    goto/16 :goto_1

    .line 277
    :cond_3
    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->i:Z

    goto :goto_2

    .line 302
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 307
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 312
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 317
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3

    .line 300
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

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0b0016

    .line 331
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 332
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/a/u;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/settings/a/u;-><init>()V

    .line 333
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    .line 334
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 335
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/CheckedTextView;->setTag(ILjava/lang/Object;)V

    .line 336
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/r;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/a/r;-><init>(Lam/sunrise/android/calendar/ui/settings/a/q;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/support/v4/widget/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "connection_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->d:I

    .line 173
    const-string v1, "connection_info"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->e:I

    .line 174
    const-string v1, "connection_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->f:I

    .line 175
    const-string v1, "calendar_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->g:I

    .line 176
    const-string v1, "calendar_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->h:I

    .line 177
    const-string v1, "calendar_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->i:I

    .line 178
    const-string v1, "calendar_description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->j:I

    .line 179
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->k:I

    .line 180
    const-string v1, "calendar_is_enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/q;->l:I

    .line 183
    :cond_0
    return-object v0
.end method

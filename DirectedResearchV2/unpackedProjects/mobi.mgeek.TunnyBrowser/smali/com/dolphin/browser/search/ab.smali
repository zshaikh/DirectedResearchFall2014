.class public Lcom/dolphin/browser/search/ab;
.super Landroid/database/AbstractCursor;
.source "SuggestionCursor.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Landroid/database/Cursor;

.field private d:Landroid/database/Cursor;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/ab;->a:[Ljava/lang/String;

    .line 54
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/search/ab;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 69
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    .line 71
    iput-object p2, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    .line 72
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    .line 73
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/dolphin/browser/search/ab;->f:I

    .line 75
    iget v0, p0, Lcom/dolphin/browser/search/ab;->f:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->e:I

    rsub-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_0

    .line 76
    iget v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    rsub-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/dolphin/browser/search/ab;->f:I

    .line 79
    :cond_0
    iput-object p3, p0, Lcom/dolphin/browser/search/ab;->h:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/dolphin/browser/search/ab;->m:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 87
    iput v3, p0, Lcom/dolphin/browser/search/ab;->i:I

    .line 88
    iput v3, p0, Lcom/dolphin/browser/search/ab;->j:I

    .line 89
    iput v3, p0, Lcom/dolphin/browser/search/ab;->k:I

    .line 90
    iput v3, p0, Lcom/dolphin/browser/search/ab;->l:I

    .line 101
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ab;->i:I

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    const-string v1, "suggest_text_2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ab;->j:I

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    const-string v1, "suggest_intent_query"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ab;->k:I

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ab;->l:I

    goto :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/dolphin/browser/core/R$drawable;->ic_search_category_bookmark:I

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-static {p1}, Lcom/dolphin/browser/search/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/dolphin/browser/core/R$drawable;->ic_search_category_history:I

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 352
    :cond_0
    :goto_0
    return-object p0

    .line 348
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/ab;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 350
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/dolphin/browser/core/R$drawable;->ic_search_category_suggest:I

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_1
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    iput-object v1, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    iput-object v1, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    .line 292
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 273
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 274
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/dolphin/browser/search/ab;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v1, p0, Lcom/dolphin/browser/search/ab;->f:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v1, p0, Lcom/dolphin/browser/search/ab;->f:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 1

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 250
    iget v0, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 136
    iget v1, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    iget v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v1, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v0, v1, :cond_1

    .line 140
    const-string v0, "android.intent.action.VIEW"

    goto :goto_0

    .line 142
    :cond_1
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_0

    .line 146
    :pswitch_1
    iget v1, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v1, v2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_2
    iget v1, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v1, v2, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/dolphin/browser/search/ab;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    iget-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    if-nez v1, :cond_3

    .line 156
    iget v1, p0, Lcom/dolphin/browser/search/ab;->i:I

    if-eq v1, v3, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    iget v1, p0, Lcom/dolphin/browser/search/ab;->i:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->h:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_3
    iget v1, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v1, v2, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/dolphin/browser/search/ab;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_4
    iget-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    if-nez v1, :cond_5

    .line 166
    iget v1, p0, Lcom/dolphin/browser/search/ab;->j:I

    if-eq v1, v3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    iget v1, p0, Lcom/dolphin/browser/search/ab;->j:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->m:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_4
    iget v0, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v1, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v0, v1, :cond_7

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/dolphin/browser/search/ab;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_6
    invoke-direct {p0}, Lcom/dolphin/browser/search/ab;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_7
    invoke-direct {p0}, Lcom/dolphin/browser/search/ab;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_5
    const-string v0, "0"

    goto :goto_0

    .line 187
    :pswitch_6
    iget v1, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-le v1, v2, :cond_8

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_8
    iget-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    if-nez v1, :cond_9

    .line 194
    iget v1, p0, Lcom/dolphin/browser/search/ab;->k:I

    if-eq v1, v3, :cond_0

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    iget v1, p0, Lcom/dolphin/browser/search/ab;->k:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    :pswitch_7
    const-string v0, "html"

    goto/16 :goto_0

    .line 204
    :pswitch_8
    iget v1, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v2, p0, Lcom/dolphin/browser/search/ab;->mPos:I

    if-gt v1, v2, :cond_0

    .line 206
    iget-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    if-nez v1, :cond_0

    .line 207
    iget v1, p0, Lcom/dolphin/browser/search/ab;->l:I

    if-eq v1, v3, :cond_0

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    iget v1, p0, Lcom/dolphin/browser/search/ab;->l:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    iget-object v2, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return v0

    .line 108
    :cond_0
    iget v2, p0, Lcom/dolphin/browser/search/ab;->e:I

    if-le v2, p2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 110
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ab;->g:Z

    :goto_1
    move v0, v1

    .line 117
    goto :goto_0

    .line 111
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/search/ab;->e:I

    iget v3, p0, Lcom/dolphin/browser/search/ab;->f:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    iget v3, p0, Lcom/dolphin/browser/search/ab;->e:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ab;->g:Z

    goto :goto_1

    .line 115
    :cond_2
    iput-boolean v1, p0, Lcom/dolphin/browser/search/ab;->g:Z

    goto :goto_1
.end method

.method public requery()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/search/ab;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/search/ab;->d:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.class public Lcom/facebook/orca/common/names/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Locale;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->a:Ljava/lang/String;

    .line 37
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->b:Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/NameSplitter;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->d:Ljava/util/HashSet;

    .line 124
    invoke-static {p2}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->g:Ljava/util/HashSet;

    .line 125
    invoke-static {p3}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->e:Ljava/util/HashSet;

    .line 126
    invoke-static {p4}, Lcom/facebook/orca/common/names/NameSplitter;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->h:Ljava/util/HashSet;

    .line 127
    if-eqz p5, :cond_0

    move-object v0, p5

    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->i:Ljava/util/Locale;

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_1

    .line 127
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    iput v2, p0, Lcom/facebook/orca/common/names/NameSplitter;->f:I

    .line 138
    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/common/names/NameSplitter;
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/orca/common/names/NameSplitter;

    const v1, 0x7f0a0113

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0115

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0114

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0116

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/names/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    if-eqz p0, :cond_0

    .line 147
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 149
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 188
    if-nez p1, :cond_3

    .line 189
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 207
    :goto_0
    return v0

    .line 191
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 194
    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 199
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 200
    goto :goto_0

    .line 201
    :cond_4
    sget-object v0, Lcom/facebook/orca/common/names/NameSplitter;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 202
    goto :goto_0

    :cond_5
    move v0, v2

    .line 204
    goto :goto_0

    :cond_6
    move v0, p1

    .line 207
    goto :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 159
    if-nez p2, :cond_0

    move v0, v3

    .line 178
    :goto_0
    return v0

    .line 163
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v1, v1, v2

    .line 170
    iget-object v2, p0, Lcom/facebook/orca/common/names/NameSplitter;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->d(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    .line 174
    :cond_2
    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v1

    move v2, v3

    :goto_1
    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 175
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, p1, v2

    .line 174
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 178
    goto :goto_0
.end method

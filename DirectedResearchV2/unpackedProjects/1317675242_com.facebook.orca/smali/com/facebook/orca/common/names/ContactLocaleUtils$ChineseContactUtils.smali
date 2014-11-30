.class Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;
.super Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/names/ContactLocaleUtils;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;->a:Lcom/facebook/orca/common/names/ContactLocaleUtils;

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;Lcom/facebook/orca/common/names/ContactLocaleUtils$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    invoke-static {}, Lcom/facebook/orca/common/names/HanziToPinyin;->a()Lcom/facebook/orca/common/names/HanziToPinyin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/common/names/HanziToPinyin;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    sub-int/2addr v2, v9

    :goto_0
    if-ltz v2, :cond_4

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;

    .line 93
    const/4 v6, 0x2

    iget v7, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->a:I

    if-ne v6, v7, :cond_1

    .line 94
    iget-object v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 96
    :cond_1
    iget v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->a:I

    if-ne v9, v6, :cond_0

    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 99
    invoke-virtual {v3, v8, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 102
    invoke-virtual {v5, v8, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 104
    :cond_3
    iget-object v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v6, p0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

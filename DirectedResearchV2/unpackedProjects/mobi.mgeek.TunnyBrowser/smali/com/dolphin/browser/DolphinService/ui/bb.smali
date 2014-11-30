.class Lcom/dolphin/browser/DolphinService/ui/bb;
.super Landroid/widget/Filter;
.source "EmailCompleteAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/az;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/DolphinService/ui/az;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/DolphinService/ui/az;Lcom/dolphin/browser/DolphinService/ui/ba;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bb;-><init>(Lcom/dolphin/browser/DolphinService/ui/az;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    const-string v0, "@"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 95
    const-string v1, "@"

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 97
    if-gez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/az;->a(Lcom/dolphin/browser/DolphinService/ui/az;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    iget-object v8, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-static {v8}, Lcom/dolphin/browser/DolphinService/ui/az;->b(Lcom/dolphin/browser/DolphinService/ui/az;)I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 120
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 125
    :cond_1
    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 128
    return-object v3

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/az;->a(Lcom/dolphin/browser/DolphinService/ui/az;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_0

    aget-object v9, v7, v1

    .line 111
    invoke-static {v9, v5}, Lcom/dolphin/browser/util/cn;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_4
    iget-object v9, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-static {v9}, Lcom/dolphin/browser/DolphinService/ui/az;->b(Lcom/dolphin/browser/DolphinService/ui/az;)I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 134
    if-eqz p2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/az;->a(Lcom/dolphin/browser/DolphinService/ui/az;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 136
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/az;->notifyDataSetChanged()V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bb;->a:Lcom/dolphin/browser/DolphinService/ui/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/az;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

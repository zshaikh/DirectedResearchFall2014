.class Lcom/dolphin/browser/ui/launcher/s;
.super Lcom/dolphin/browser/util/f;
.source "MostVisitedFolderManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/launcher/cl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/q;

.field private b:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/s;->b:Lcom/dolphin/browser/ui/launcher/g;

    .line 116
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/ui/launcher/t;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/ui/launcher/t;-><init>(Lcom/dolphin/browser/ui/launcher/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/bf;)Ljava/util/List;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Lcom/dolphin/browser/launcher/be;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->b:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/g;->t()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 147
    instance-of v2, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v2, :cond_1

    .line 148
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 149
    const-string v2, "most_visited_folder"

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/launcher/be;)Lcom/dolphin/browser/launcher/be;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    if-nez v0, :cond_3

    .line 156
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->b()Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->b:Lcom/dolphin/browser/ui/launcher/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/launcher/be;)Lcom/dolphin/browser/launcher/be;

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/s;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/s;->c()Ljava/util/Set;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/s;->f()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v4

    .line 172
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 175
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_3
    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    const/16 v0, 0x28

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 184
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v2, v7

    const-string v5, "url"

    aput-object v5, v2, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title IS NOT NULL AND url NOT IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "score DESC, last_visit_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    if-eqz v2, :cond_8

    .line 194
    :cond_5
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-direct {p0, v5}, Lcom/dolphin/browser/ui/launcher/s;->a(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v0

    .line 198
    if-nez v0, :cond_6

    .line 199
    invoke-static {v3, v5, v4}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v0

    .line 200
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 202
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 203
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v4, v1

    .line 208
    goto/16 :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 138
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/s;->g()Lcom/dolphin/browser/launcher/be;

    .line 139
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/s;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/be;->a(Ljava/util/List;)V

    .line 237
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 240
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 241
    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->b:Lcom/dolphin/browser/ui/launcher/g;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v2}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/q;->b(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/ui/launcher/s;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/ui/launcher/s;)Lcom/dolphin/browser/ui/launcher/s;

    .line 248
    :cond_1
    return-void
.end method

.method c()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/s;->b:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/g;->t()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 122
    instance-of v3, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v3, :cond_1

    .line 123
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    instance-of v3, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/s;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-static {v3}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;

    move-result-object v3

    if-eq v0, v3, :cond_0

    .line 126
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 128
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_2
    return-object v1
.end method

.class public final Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;
.super Ljava/lang/Object;
.source "SafeFilenameFilterWrapper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final FORBIDDEN_DIRECTORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gameFilter:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "cache"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "lib"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ".amazonGamesService"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->FORBIDDEN_DIRECTORIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->gameFilter:Ljava/io/FilenameFilter;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 43
    .local v0, "isDir":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->FORBIDDEN_DIRECTORIES:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->gameFilter:Ljava/io/FilenameFilter;

    if-nez v1, :cond_1

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->gameFilter:Ljava/io/FilenameFilter;

    invoke-interface {v1, p1, p2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->gameFilter:Ljava/io/FilenameFilter;

    .line 33
    return-void
.end method

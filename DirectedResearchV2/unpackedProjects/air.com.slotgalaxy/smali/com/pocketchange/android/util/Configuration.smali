.class public Lcom/pocketchange/android/util/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/Configuration$1;,
        Lcom/pocketchange/android/util/Configuration$ManifestEntry;,
        Lcom/pocketchange/android/util/Configuration$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pocketchange/android/util/Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/pocketchange/android/util/Configuration$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pocketchange/android/util/Configuration$a;-><init>(Lcom/pocketchange/android/util/Configuration$1;)V

    sput-object v0, Lcom/pocketchange/android/util/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Properties;)V
    .locals 5
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/pocketchange/android/util/Configuration$ManifestEntry",
            "<*>;>;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "manifest":Ljava/util/Set;, "Ljava/util/Set<Lcom/pocketchange/android/util/Configuration$ManifestEntry<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    .line 22
    iget-object v3, v0, Lcom/pocketchange/android/util/Configuration$ManifestEntry;->key:Ljava/lang/String;

    .line 24
    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property with key ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a string (has type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;->valueForString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_1
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v3, v0}, Lcom/pocketchange/android/util/Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, v0, Lcom/pocketchange/android/util/Configuration$ManifestEntry;->defaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v0, p1, Lcom/pocketchange/android/util/Configuration;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 83
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/pocketchange/android/util/Configuration;

    .line 84
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/Configuration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/pocketchange/android/util/Configuration;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/Configuration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/pocketchange/android/util/Configuration;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/pocketchange/android/util/Configuration;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0    # "this":Lcom/pocketchange/android/util/Configuration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/pocketchange/android/util/BundleUtils;->putObject(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

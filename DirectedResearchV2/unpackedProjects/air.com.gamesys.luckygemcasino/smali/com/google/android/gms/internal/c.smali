.class public final Lcom/google/android/gms/internal/c;
.super Lcom/google/android/gms/internal/j;

# interfaces
.implements Lcom/google/android/gms/appstate/AppState;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/j;-><init>(Lcom/google/android/gms/internal/l;I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/appstate/AppState;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/b;-><init>(Lcom/google/android/gms/appstate/AppState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->a()Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    return-object v0
.end method

.method public getConflictData()[B
    .locals 1

    const-string v0, "conflict_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getConflictVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "conflict_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()I
    .locals 1

    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalData()[B
    .locals 1

    const-string v0, "local_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "local_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConflict()Z
    .locals 1

    const-string v0, "conflict_version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/appstate/AppState;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/b;->b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

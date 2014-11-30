.class abstract Lcom/mobosquare/sdk/subscription/c/h;
.super Ljava/io/PrintStream;
.source "Log.java"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/Formatter;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/mobosquare/sdk/subscription/c/i;

    invoke-direct {v0}, Lcom/mobosquare/sdk/subscription/c/i;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    .line 145
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->b:Ljava/util/Formatter;

    .line 58
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move v0, v1

    .line 83
    :goto_0
    if-ge v0, v2, :cond_0

    .line 84
    iget-object v3, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 89
    :cond_0
    if-eqz p1, :cond_3

    .line 91
    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    :goto_1
    return-void

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method public declared-synchronized append(C)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/c/h;->print(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-object p0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-object p0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-object p0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/c/h;->append(C)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/c/h;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mobosquare/sdk/subscription/c/h;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkError()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mobosquare/sdk/subscription/c/h;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs declared-synchronized format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    if-nez p2, :cond_0

    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->b:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized print(C)V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(D)V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(F)V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(I)V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(J)V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print(Z)V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized print([C)V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/mobosquare/sdk/subscription/c/h;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/mobosquare/sdk/subscription/c/h;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized println()V
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(C)V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(D)V
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(F)V
    .locals 1

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(I)V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(J)V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 263
    const/4 v0, 0x0

    .line 267
    :goto_0
    if-ge v0, v1, :cond_0

    .line 268
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 273
    :cond_0
    if-ge v0, v1, :cond_1

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 269
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Ljava/lang/String;)V

    .line 270
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println(Z)V
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized println([C)V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/c/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/c/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setError()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public write([B)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public write([BII)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

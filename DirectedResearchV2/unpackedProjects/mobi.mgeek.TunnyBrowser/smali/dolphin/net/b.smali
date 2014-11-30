.class public Ldolphin/net/b;
.super Ljava/lang/Object;
.source "DomainNameValidator.java"


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    const-string v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/net/b;->a:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 74
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    sget-object v0, Ldolphin/net/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    const-string v0, "unknown host exception"

    :cond_2
    move v0, v1

    .line 92
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 208
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 251
    :cond_1
    :goto_0
    return v0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-nez v0, :cond_1

    .line 218
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 219
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    array-length v6, v4

    .line 222
    array-length v7, v5

    .line 225
    if-lt v6, v7, :cond_5

    .line 226
    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 227
    aget-object v0, v4, v2

    aget-object v3, v5, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 228
    if-nez v3, :cond_4

    .line 231
    if-nez v2, :cond_3

    if-ne v6, v7, :cond_3

    const/4 v0, 0x1

    .line 232
    :goto_2
    if-eqz v0, :cond_1

    .line 233
    aget-object v0, v5, v1

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    if-nez v0, :cond_1

    .line 237
    aget-object v0, v4, v1

    aget-object v1, v5, v1

    invoke-static {v0, v1}, Ldolphin/net/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 231
    goto :goto_2

    .line 226
    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ldolphin/net/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-static {p0, v0}, Ldolphin/net/b;->c(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p0, v0}, Ldolphin/net/b;->b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 262
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 264
    if-ltz v1, :cond_0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 266
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 267
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    return v0
.end method

.method private static b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 114
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    .line 116
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    .line 120
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 121
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    :cond_1
    move v0, v3

    .line 136
    goto :goto_0
.end method

.method private static c(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 146
    .line 148
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    .line 151
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    .line 153
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v6, v1, :cond_5

    .line 154
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    .line 155
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 158
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-static {p1, v0}, Ldolphin/net/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v4, v2

    .line 192
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v0, v2

    :goto_2
    move v3, v0

    .line 167
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_2

    .line 172
    const-string v0, "failed to parse certificate"

    .line 175
    :cond_2
    const-string v1, "DomainNameValidator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomainNameValidator.matchDns(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v3, v4

    .line 179
    :cond_4
    if-nez v3, :cond_0

    .line 180
    new-instance v0, Ldolphin/net/a;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/net/a;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ldolphin/net/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1, v0}, Ldolphin/net/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

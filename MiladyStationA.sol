// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣴⣶⣾⣿⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⢿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⡿⠿⠟⠛⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⡿⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣶⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠙⠋⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣾⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣾⠟⢋⣥⣤⠀⣶⣶⣶⣦⣤⣌⣉⠛⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢁⣴⣿⣿⡿⠀⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀
⠀⠀⠀⣼⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣶⣶⣾⣿⣿⣿⣿⣷⣶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⠁⠀⠀⢹⣿⣿⣿⣿⣿⣿⢻⣿⡄⠀⠀⠀⠀
⠀⠀⠀⠛⠋⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⠿⠛⣛⣉⣉⣀⣀⡀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⢸⣿⣿⡄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⢋⣩⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣦⣀⣀⣴⣿⣿⣿⣿⣿⡿⢸⣿⢿⣷⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣡⣄⠀⠋⠁⠀⠈⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⡿⠀⠛⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣧⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠃⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠈⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⢿⣿⣿⣿⣷⣦⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⣿⠇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢠⣿⣿⣿⠟⠉⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢸⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣼⣿⡟⠁⣠⣦⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡆⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⠏⠀⣸⡏⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⡏⠀⠀⣿⣿⡀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⢹⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⠀⠀⠀⠙⢿⣿⣿⡿⠟⠁⠀⣸⡿⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⣿⠁⠀⠀⢸⣿⣇⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣦⡀⠀⠀⠀⠈⠉⠀⠀⠀⣼⡿⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⢿⣿⡄⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⣼⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣦⣄⣀⠀⠀⢀⡈⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣆⠀⠀⠀⠉⠛⠿⢿⣿⣿⠿⠛⠁⠀⠀⠀⣠⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣷⣿⣯⣤⣶⠄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠺⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢻⣿⣶⣤⣤⣤⣶⣷⣤⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⡿⠿⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠶⢤⣄⣀⣀⣤⠶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
::::    ::::  ::::::::::: :::            :::     :::::::::  :::   :::  ::::::::  :::::::::::     :::     ::::::::::: :::::::::::  ::::::::  ::::    ::: 
+:+:+: :+:+:+     :+:     :+:          :+: :+:   :+:    :+: :+:   :+: :+:    :+:     :+:       :+: :+:       :+:         :+:     :+:    :+: :+:+:   :+: 
+:+ +:+:+ +:+     +:+     +:+         +:+   +:+  +:+    +:+  +:+ +:+  +:+            +:+      +:+   +:+      +:+         +:+     +:+    +:+ :+:+:+  +:+ 
+#+  +:+  +#+     +#+     +#+        +#++:++#++: +#+    +:+   +#++:   +#++:++#++     +#+     +#++:++#++:     +#+         +#+     +#+    +:+ +#+ +:+ +#+ 
+#+       +#+     +#+     +#+        +#+     +#+ +#+    +#+    +#+           +#+     +#+     +#+     +#+     +#+         +#+     +#+    +#+ +#+  +#+#+# 
#+#       #+#     #+#     #+#        #+#     #+# #+#    #+#    #+#    #+#    #+#     #+#     #+#     #+#     #+#         #+#     #+#    #+# #+#   #+#+# 
###       ### ########### ########## ###     ### #########     ###     ########      ###     ###     ###     ###     ###########  ########  ###    #### ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
*/

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "../erc721a/contracts/ERC721A.sol";
import "../erc721a/contracts/extensions/ERC721ABurnable.sol";
import "../erc721a/contracts/extensions/ERC721AQueryable.sol";
import {IERC2981, ERC2981} from "@openzeppelin/contracts/token/common/ERC2981.sol";
import "../solady/auth/Ownable.sol";
import "../closedsea/OperatorFilterer.sol";


contract MiladyStationUpgraded is ERC721A, ERC721AQueryable, ERC721ABurnable, OperatorFilterer, Ownable, ERC2981 {

    string public s_MILADYSTATION_PROVENANCE = "";

    uint public constant s_maxMiladyPurchase = 30;
    uint256 public constant s_MAXMILADYSTATIONS = 1212;
    uint256 public constant s_miladystationOG = 362;

    string public MILADYSTATION_PROVENANCE = '';
    string public IPFSURI = '';

    bool public s_saleIsActive = false;
    bool public operatorFilteringEnabled;

    IERC721Enumerable milady = IERC721Enumerable(0x5Af0D9827E0c53E4799BB226655A1de152A425a5);

    IERC721Enumerable ghiblady = IERC721Enumerable(0x186E74aD45bF81fb3712e9657560f8f6361cbBef);
    IERC721Enumerable pixelady = IERC721Enumerable(0x8Fc0D90f2C45a5e7f94904075c952e0943CFCCfd);
    IERC721Enumerable cig = IERC721Enumerable(0xEEd41d06AE195CA8f5CaCACE4cd691EE75F0683f);
    
    mapping(address => bool) public whitelistOneMint;
    mapping(address => bool) public miladyMinted;

    constructor() ERC721A("MiladyStation", "MS") {
        _registerForOperatorFiltering();
        operatorFilteringEnabled = true;

        // Set royalty receiver to the contract creator,
        // at 5% (default denominator is 10000).
        _setDefaultRoyalty(msg.sender, 500);
        _initializeOwner(msg.sender);
    }

    function setProvenanceHash(string memory provenanceHash) public onlyOwner {
        s_MILADYSTATION_PROVENANCE = provenanceHash;
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        IPFSURI = baseURI;
    }

    function _baseURI() internal view virtual override(ERC721A) returns (string memory) {
        return IPFSURI;
    }

    // the following functions are overrides for creator fee opensea default operator stuff

     function setApprovalForAll(address operator, bool approved)
        public
        override (IERC721A, ERC721A)
        onlyAllowedOperatorApproval(operator)
    {
        super.setApprovalForAll(operator, approved);
    }

    function approve(address operator, uint256 tokenId)
        public
        payable
        override (IERC721A, ERC721A)
        onlyAllowedOperatorApproval(operator)
    {
        super.approve(operator, tokenId);
    }

    function transferFrom(address from, address to, uint256 tokenId)
        public
        payable
        override (IERC721A, ERC721A)
        onlyAllowedOperator(from)
    {
        super.transferFrom(from, to, tokenId);
    }

    function safeTransferFrom(address from, address to, uint256 tokenId)
        public
        payable
        override (IERC721A, ERC721A)
        onlyAllowedOperator(from)
    {
        super.safeTransferFrom(from, to, tokenId);
    }

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data)
        public
        payable
        override (IERC721A, ERC721A)
        onlyAllowedOperator(from)
    {
        super.safeTransferFrom(from, to, tokenId, data);
    }

    //
    //
    //                      HEYHEYHEY YOU NEED TO FIX METADATA AND PUT THE NEW FOLDER URI HERE ^^^^^^^^^^^
    //

    ///
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override (IERC721A, ERC721A, ERC2981)
        returns (bool)
    {
        // Supports the following `interfaceId`s:
        // - IERC165: 0x01ffc9a7
        // - IERC721: 0x80ac58cd
        // - IERC721Metadata: 0x5b5e139f
        // - IERC2981: 0x2a55205a
        return ERC721A.supportsInterface(interfaceId) || ERC2981.supportsInterface(interfaceId);
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) public onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function setOperatorFilteringEnabled(bool value) public onlyOwner {
        operatorFilteringEnabled = value;
    }

    function _operatorFilteringEnabled() internal view override returns (bool) {
        return operatorFilteringEnabled;
    }

    function _isPriorityOperator(address operator) internal pure override returns (bool) {
        // OpenSea Seaport Conduit:
        // https://etherscan.io/address/0x1E0049783F008A0085193E00003D00cd54003c71
        // https://goerli.etherscan.io/address/0x1E0049783F008A0085193E00003D00cd54003c71
        return operator == address(0x1E0049783F008A0085193E00003D00cd54003c71);
    }
    //
    
    function withdraw() public onlyOwner {
        uint balance = address(this).balance;
        payable(msg.sender).transfer(balance);
    }

    // Milady check

    function miladyHolderCheck(address holder) public view returns (uint256) {
        uint256 tokenNum = 0;
        try milady.balanceOf(holder) returns (uint256 miladyHolderIndex) {
            // First token owned by user
            tokenNum = miladyHolderIndex;
        } catch (bytes memory) {
            // No tokens owned by user
        }
        //return tokenNum;
        return 1;
        // TEST TEST TEST 
    }
    
    //Friend check

    function miladyFriendCheck(address holder) public view returns (uint256) {
        //fake token number
        uint256 tokenNum = 0;
        try ghiblady.balanceOf(holder) returns (uint256 miladyGhibIndex) {
            // First token owned by user
            tokenNum += miladyGhibIndex;
        } catch (bytes memory) {
            // No tokens owned by user
        }
        try pixelady.balanceOf(holder) returns (uint256 miladyPixIndex) {
            // First token owned by user
            tokenNum += miladyPixIndex;
        } catch (bytes memory) {
            // No tokens owned by user
        }
        try cig.balanceOf(holder) returns (uint256 miladyCigIndex) {
            // First token owned by user
            tokenNum += miladyCigIndex;
        } catch (bytes memory) {
            // No tokens owned by user
        }
        return tokenNum;
    }

    // secret free mint

    function editWhitelistOne(address[] memory array) public onlyOwner {
        for(uint256 i = 0; i < array.length; i++) {
            address addressElement = array[i];
            whitelistOneMint[addressElement] = true;
        } 
    }

    function reserveMintMiladyStations(address target) public onlyOwner {
        require(totalSupply() == 0, "the time for this has passed.");
        _safeMint(target, s_miladystationOG);
    }

    function reserveMintMiladys() public {
        uint256 miladys = miladyHolderCheck(msg.sender);
        if (miladys > 0 && !miladyMinted[msg.sender]){
            miladyMinted[msg.sender] = true;
            _safeMint(msg.sender,1);
        } else {
            require(false, "Nice try buster, miladys only");
        }
    }

    function reserveMintWhitelist() public {
        if (msg.sender == owner()){
            _safeMint(msg.sender, 10);
            _safeMint(msg.sender, 10);
            _safeMint(msg.sender, 10);
        } else if (whitelistOneMint[msg.sender]){
            whitelistOneMint[msg.sender] = false;
            _safeMint(msg.sender, 2);
        } else {
            require(false, "Nice try buster, not on the list");
        }
    }
    
    function flipSaleState() public onlyOwner {
        s_saleIsActive = !s_saleIsActive;
    }

    function mintMiladys(uint256 numberOfTokens) public payable {
        require(s_saleIsActive, "Sale must be active to mint Miladys");
        require(numberOfTokens <= s_maxMiladyPurchase, "Can only mint up to 30 tokens at a time");
        require(totalSupply() + numberOfTokens < s_MAXMILADYSTATIONS, "Purchase would exceed max supply of Miladys");
        require(miladyHolderCheck(msg.sender) > 0, "wait but you don't have a milady.. ");
        uint256 miladyPrice;

        //Prices defined 12/3/22

        // should I just make these calls to storage for max purchase and max miladystations to the numbers I knoew them to be , 30 and 1212, and save gas?

        //Mint for Miladys
        if (numberOfTokens == 30) {
            miladyPrice = 2000000000000000; // 0.002 ETH 
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 15) {
            miladyPrice = 3000000000000000; // 0.003 ETH 
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 5) {
            miladyPrice = 4000000000000000; // 0.004 ETH 
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else {
            miladyPrice = 5000000000000000; // 0.005 ETH should be 6 dollars
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        }
        //mint in batches of 5 to save gas on transfers
        if(numberOfTokens % 5 == 0){
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _safeMint(msg.sender,5);
            }
        } else {
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _safeMint(msg.sender,5);
            }
            _safeMint(msg.sender,numberOfTokens%5);
        }

    }

    function mintFriends(uint256 numberOfTokens) public payable {
        require(s_saleIsActive, "Sale must be active to mint MiladyStations");
        require(numberOfTokens <= s_maxMiladyPurchase, "Can only mint up to 30 tokens at a time");
        require(totalSupply() + numberOfTokens < s_MAXMILADYSTATIONS, "Purchase would exceed max supply of MiladyStations");
        require(miladyFriendCheck(msg.sender) > 0, "pick up a ghib, pixel or cig for friend price.");
        uint256 miladyPrice;

        //Mint for Friend of Milady
        //Ghiblady, Pixelady, Cigawrette Honorable Mentions: Miaura, Sonora, Milaidy
        if (numberOfTokens == 30) {
            miladyPrice = 6000000000000000; // 0.006 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 15) {
            miladyPrice = 7000000000000000; // 0.007 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 5) {
            miladyPrice = 8000000000000000; // 0.008 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else {
            miladyPrice = 9000000000000000; // 0.009 ETH should be 11 dollars
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        }
        //mint in batches of 5 to save gas on transfers
        if(numberOfTokens % 5 == 0){
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _mint(msg.sender,5);
            }
        } else {
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _mint(msg.sender,5);
            }
            _mint(msg.sender,numberOfTokens%5);
        }
    }

    function mintNew(uint256 numberOfTokens) public payable {
        require(s_saleIsActive, "Sale must be active to mint MiladyStations");
        require(numberOfTokens <= s_maxMiladyPurchase, "Can only mint up to 30 tokens at a time");
        require(totalSupply() + numberOfTokens < s_MAXMILADYSTATIONS, "Purchase would exceed max supply of MiladyStations");
        uint256 miladyPrice;

        if (numberOfTokens == 30) {
            miladyPrice = 9000000000000000; /// 0.009 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 15) {
            miladyPrice = 10000000000000000; // 0.010 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else if (numberOfTokens >= 5) {
            miladyPrice = 11000000000000000; // 0.011 ETH
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        } else {
            miladyPrice = 12000000000000000; // 0.012 ETH should be 15 dollars
            require(miladyPrice*(numberOfTokens) <= msg.value, "Ether value sent is not correct");
        }
        //mint in batches of 5 to save gas on erc721A transferFrom
        if(numberOfTokens % 5 == 0){
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _mint(msg.sender,5);
            }
        } else {
            for(uint i = 0; i < numberOfTokens/5; i++) {
                _mint(msg.sender,5);
            }
            _mint(msg.sender,numberOfTokens%5);
        }

    }

    
}

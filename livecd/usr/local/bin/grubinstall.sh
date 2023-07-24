#!/bin/bash

# grubinstall script
# Revision: 2023.05.21 -- by eznix (https://sourceforge.net/projects/ezarch/)
# (GNU/General Public License version 3.0)

if [ -d "/sys/firmware/efi" ]; then
  grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=ezarcher --recheck
  grub-mkconfig -o /boot/grub/grub.cfg
else
  LRDEV=$(findmnt -n -o SOURCE / | cut -c1-8)
  grub-install --target=i386-pc "${LRDEV}"
  grub-mkconfig -o /boot/grub/grub.cfg
fi


# Disclaimer:
# THIS SOFTWARE IS PROVIDED BY EZNIX “AS IS” AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
# EVENT SHALL EZNIX BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# END
